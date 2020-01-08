.class public Lcom/meizu/common/preference/ExpandableListPreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;,
        Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

.field private mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field public mIsExtand:Z

.field private mIsWaitingToChange:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mSummary:Landroid/widget/TextView;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z

.field private performClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/ExpandableListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/preference/ExpandableListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    .line 47
    const/16 v0, 0x190

    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->ANIMATION_DURATION:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mHandler:Landroid/os/Handler;

    .line 56
    iput-boolean v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsWaitingToChange:Z

    .line 501
    new-instance v0, Lcom/meizu/common/preference/ExpandableListPreference$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/preference/ExpandableListPreference$2;-><init>(Lcom/meizu/common/preference/ExpandableListPreference;)V

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->performClick:Ljava/lang/Runnable;

    .line 69
    sget-object v0, Lcom/meizu/common/R$styleable;->ExpandableListPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    sget v1, Lcom/meizu/common/R$styleable;->ExpandableListPreference_mcEntries:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 72
    sget v1, Lcom/meizu/common/R$styleable;->ExpandableListPreference_mcEntryValues:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget v0, Lcom/meizu/common/R$layout;->mc_expandable_preference_layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ExpandableListPreference;->setLayoutResource(I)V

    .line 75
    new-instance v0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-direct {v0, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;-><init>(Lcom/meizu/common/preference/ExpandableListPreference;)V

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .line 76
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_expandable_preference_inner_list_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->setMarginTop(I)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/preference/ExpandableListPreference;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsWaitingToChange:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/preference/ExpandableListPreference;)Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/preference/ExpandableListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/preference/ExpandableListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/preference/ExpandableListPreference;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/preference/ExpandableListPreference;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/common/preference/ExpandableListPreference;->setListSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/common/preference/ExpandableListPreference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/ExpandableListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/preference/ExpandableListPreference;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->performClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/preference/ExpandableListPreference;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ExpandableListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setListSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 486
    :try_start_0
    const-class v0, Landroid/preference/Preference;

    const-string v1, "mSummary"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 487
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 488
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 499
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 492
    :catch_1
    move-exception v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 495
    :catch_2
    move-exception v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 197
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 199
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    :goto_1
    return v0

    .line 198
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->getValueIndex()I

    move-result v0

    .line 547
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public iSAnimating()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->iSAnimating()Z

    move-result v0

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 83
    sget v0, Lcom/meizu/common/R$id;->expand_listview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    .line 84
    new-instance v0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    invoke-virtual {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v2, v3}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;-><init>(Lcom/meizu/common/preference/ExpandableListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    .line 85
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/meizu/common/R$id;->pull_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mImageView:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->getValueIndex()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 90
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->getValueIndex()I

    move-result v0

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/meizu/common/preference/ExpandableListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    invoke-virtual {v2, v0}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->setSelectedPosition(I)V

    .line 95
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->notifyDataSetChanged()V

    .line 96
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->setTargetList(Landroid/widget/ListView;)V

    .line 103
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 105
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/meizu/common/preference/ExpandableListPreference$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/preference/ExpandableListPreference$1;-><init>(Lcom/meizu/common/preference/ExpandableListPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 128
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 129
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 137
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 143
    :goto_2
    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method protected onClick()V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->iSAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsWaitingToChange:Z

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->ANIMATION_DURATION:I

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;IJ)V

    .line 154
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->animateHeightPrt()V

    .line 155
    iput-boolean v11, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    goto :goto_0

    .line 158
    :cond_2
    iget-object v7, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    iget-object v8, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->ANIMATION_DURATION:I

    int-to-long v12, v0

    invoke-virtual/range {v7 .. v13}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;IJ)V

    .line 160
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->animateHeightPrt()V

    .line 161
    iput-boolean v5, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 176
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ExpandableListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/meizu/common/preference/ExpandableListPreference;->setValue(Ljava/lang/String;)V

    .line 178
    return-void

    .line 176
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public performCollapseAnim()V
    .locals 8

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    const/4 v5, 0x1

    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->ANIMATION_DURATION:I

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;IJ)V

    .line 169
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->animateHeightPrt()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    .line 172
    :cond_0
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 523
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 539
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 181
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 182
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    .line 184
    iput-boolean v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValueSet:Z

    .line 185
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/ExpandableListPreference;->persistString(Ljava/lang/String;)Z

    .line 186
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->notifyChanged()V

    .line 190
    :cond_1
    return-void

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
