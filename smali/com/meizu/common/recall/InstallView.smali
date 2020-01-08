.class public Lcom/meizu/common/recall/InstallView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/recall/InstallView$InstallTask;,
        Lcom/meizu/common/recall/InstallView$OnInstallViewListener;,
        Lcom/meizu/common/recall/InstallView$State;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "INSTALL.VIEW.ACTION"

.field private static final ANIMATION_DURATION:I = 0x50

.field private static final CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILEPATH_NOT_EXIT:I = -0x2

.field private static final INSTALL_CALL_ERROR:I = 0x0

.field private static final INSTALL_SUCCESS:I = 0x1

.field private static final NO_NEED_TO_INSTALL:I = -0x1

.field private static final WAIT_INSTALL_RESULT:I = 0x2

.field private static mFlymePackageManager:Ljava/lang/Object;


# instance fields
.field private hasRegisterInstallResult:Z

.field private hasRegisterSystemBroacast:Z

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppPackageName:Ljava/lang/String;

.field private mBuildAction:Ljava/lang/String;

.field private mCollector:Lcom/meizu/common/recall/RecallUsageCollector;

.field private mContext:Landroid/content/Context;

.field private mCurrentPackageName:Ljava/lang/String;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDescText:Ljava/lang/String;

.field private mDescTextView:Landroid/widget/TextView;

.field private mIconImageView:Landroid/widget/ImageView;

.field private mInstallButton:Landroid/widget/Button;

.field private mInstallButtonCompleteText:Ljava/lang/String;

.field private mInstallButtonIdleText:Ljava/lang/String;

.field private final mInstallResultReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallingText:Ljava/lang/String;

.field private mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

.field private mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

.field private mState:Lcom/meizu/common/recall/InstallView$State;

.field private final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWindowVisiable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/meizu/common/recall/InstallView;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/recall/InstallView;->mFlymePackageManager:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/recall/InstallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/recall/InstallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 700
    new-instance v0, Lcom/meizu/common/recall/InstallView$5;

    invoke-direct {v0, p0}, Lcom/meizu/common/recall/InstallView$5;-><init>(Lcom/meizu/common/recall/InstallView;)V

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallResultReceiver:Landroid/content/BroadcastReceiver;

    .line 714
    new-instance v0, Lcom/meizu/common/recall/InstallView$6;

    invoke-direct {v0, p0}, Lcom/meizu/common/recall/InstallView$6;-><init>(Lcom/meizu/common/recall/InstallView;)V

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    .line 162
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mCurrentPackageName:Ljava/lang/String;

    .line 163
    new-instance v0, Lcom/meizu/common/recall/RecallUsageCollector;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/common/recall/RecallUsageCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mCollector:Lcom/meizu/common/recall/RecallUsageCollector;

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/recall/InstallView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    invoke-direct {p0}, Lcom/meizu/common/recall/InstallView;->initView()V

    .line 166
    invoke-direct {p0}, Lcom/meizu/common/recall/InstallView;->initData()V

    .line 167
    invoke-direct {p0}, Lcom/meizu/common/recall/InstallView;->initListener()V

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 169
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->interpolator:Landroid/animation/TimeInterpolator;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$State;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mState:Lcom/meizu/common/recall/InstallView$State;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mCurrentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/meizu/common/recall/InstallView;->getCallbackAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/common/recall/InstallView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/meizu/common/recall/InstallView;->unregisterReceivers()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/RecallUsageCollector;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mCollector:Lcom/meizu/common/recall/RecallUsageCollector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$OnInstallViewListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/recall/InstallView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/common/recall/InstallView;->setCallbackAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/common/recall/InstallView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/meizu/common/recall/InstallView;->installPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/common/recall/InstallView;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/common/recall/InstallView;->callbackEvent(I)V

    return-void
.end method

.method private callbackEvent(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 734
    packed-switch p1, :pswitch_data_0

    .line 766
    :goto_0
    return-void

    .line 736
    :pswitch_0
    sget-object v0, Lcom/meizu/common/recall/InstallView$State;->COMPLETE:Lcom/meizu/common/recall/InstallView$State;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/recall/InstallView;->setState(Lcom/meizu/common/recall/InstallView$State;Z)V

    .line 737
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    invoke-interface {v0}, Lcom/meizu/common/recall/InstallView$OnInstallViewListener;->onInstallCompelte()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mCollector:Lcom/meizu/common/recall/RecallUsageCollector;

    const-string v1, "recall_success"

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView;->mCurrentPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    const-string v4, "ok"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/common/recall/RecallUsageCollector;->onInstallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :pswitch_1
    sget-object v0, Lcom/meizu/common/recall/InstallView$State;->IDLE:Lcom/meizu/common/recall/InstallView$State;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/recall/InstallView;->setState(Lcom/meizu/common/recall/InstallView$State;Z)V

    .line 744
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    invoke-interface {v0, v1}, Lcom/meizu/common/recall/InstallView$OnInstallViewListener;->onInstallError(I)V

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mCollector:Lcom/meizu/common/recall/RecallUsageCollector;

    const-string v1, "recall_error"

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView;->mCurrentPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    const-string v4, "install call error"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/common/recall/RecallUsageCollector;->onInstallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :pswitch_2
    sget-object v0, Lcom/meizu/common/recall/InstallView$State;->COMPLETE:Lcom/meizu/common/recall/InstallView$State;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/recall/InstallView;->setState(Lcom/meizu/common/recall/InstallView$State;Z)V

    .line 751
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/meizu/common/recall/InstallView$OnInstallViewListener;->onInstallError(I)V

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mCollector:Lcom/meizu/common/recall/RecallUsageCollector;

    const-string v1, "recall_error"

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView;->mCurrentPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    const-string v4, "no need to install"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/common/recall/RecallUsageCollector;->onInstallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :pswitch_3
    sget-object v0, Lcom/meizu/common/recall/InstallView$State;->IDLE:Lcom/meizu/common/recall/InstallView$State;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/recall/InstallView;->setState(Lcom/meizu/common/recall/InstallView$State;Z)V

    .line 758
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    if-eqz v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Lcom/meizu/common/recall/InstallView$OnInstallViewListener;->onInstallError(I)V

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mCollector:Lcom/meizu/common/recall/RecallUsageCollector;

    const-string v1, "recall_error"

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView;->mCurrentPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    const-string v4, "filepath not exist"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/common/recall/RecallUsageCollector;->onInstallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private changeStateAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 312
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 313
    const-wide/16 v2, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    new-instance v1, Lcom/meizu/common/recall/InstallView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/common/recall/InstallView$3;-><init>(Lcom/meizu/common/recall/InstallView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 324
    new-instance v1, Lcom/meizu/common/recall/InstallView$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/common/recall/InstallView$4;-><init>(Lcom/meizu/common/recall/InstallView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 348
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 349
    return-void

    .line 312
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getCallbackAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mBuildAction:Ljava/lang/String;

    return-object v0
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/meizu/common/recall/R$styleable;->InstallView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    sget v1, Lcom/meizu/common/recall/R$styleable;->InstallView_mcAppTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/recall/InstallView;->mTitleText:Ljava/lang/String;

    .line 195
    sget v1, Lcom/meizu/common/recall/R$styleable;->InstallView_mcDefaultIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/recall/InstallView;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 196
    sget v1, Lcom/meizu/common/recall/R$styleable;->InstallView_mcAppDesc:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/recall/InstallView;->mDescText:Ljava/lang/String;

    .line 197
    sget v1, Lcom/meizu/common/recall/R$styleable;->InstallView_mcInstallingText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/recall/InstallView;->mInstallingText:Ljava/lang/String;

    .line 198
    sget v1, Lcom/meizu/common/recall/R$styleable;->InstallView_mcInstallButtonTextIdle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonIdleText:Ljava/lang/String;

    .line 199
    sget v1, Lcom/meizu/common/recall/R$styleable;->InstallView_mcInstallButtonTextComplete:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonCompleteText:Ljava/lang/String;

    .line 200
    sget v1, Lcom/meizu/common/recall/R$styleable;->InstallView_mcAppPackageName:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    .line 201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallingText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/meizu/common/recall/InstallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/recall/R$string;->installing_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallingText:Ljava/lang/String;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonIdleText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/meizu/common/recall/InstallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/recall/R$string;->install_idle_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonIdleText:Ljava/lang/String;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonCompleteText:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/meizu/common/recall/InstallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/recall/R$string;->install_complete_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonCompleteText:Ljava/lang/String;

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/meizu/common/recall/InstallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/recall/R$drawable;->icon_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/recall/InstallView;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mIconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDescTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mDescText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mInstallingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/common/recall/LoadingTextView;->setLoadText(Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/meizu/common/recall/InstallView$State;->IDLE:Lcom/meizu/common/recall/InstallView$State;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/recall/InstallView;->setState(Lcom/meizu/common/recall/InstallView$State;Z)V

    .line 224
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    new-instance v1, Lcom/meizu/common/recall/InstallView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/recall/InstallView$1;-><init>(Lcom/meizu/common/recall/InstallView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/meizu/common/recall/InstallView$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/recall/InstallView$2;-><init>(Lcom/meizu/common/recall/InstallView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 177
    invoke-virtual {p0}, Lcom/meizu/common/recall/InstallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meizu/common/recall/R$layout;->installview_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 178
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    sget v0, Lcom/meizu/common/recall/R$id;->installview_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mIconImageView:Landroid/widget/ImageView;

    .line 181
    sget v0, Lcom/meizu/common/recall/R$id;->installview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mTitleTextView:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/meizu/common/recall/R$id;->installview_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDescTextView:Landroid/widget/TextView;

    .line 183
    sget v0, Lcom/meizu/common/recall/R$id;->loadText:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/recall/LoadingTextView;

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    .line 184
    sget v0, Lcom/meizu/common/recall/R$id;->installbutton:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    .line 185
    sget v0, Lcom/meizu/common/recall/R$id;->bt_close:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDeleteButton:Landroid/widget/ImageButton;

    .line 187
    invoke-virtual {p0, v1}, Lcom/meizu/common/recall/InstallView;->addView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public static installAndroidP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 613
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v1, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 614
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 617
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v10

    .line 619
    const v1, 0xffff

    new-array v11, v1, [B

    .line 620
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 622
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v4

    .line 625
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 626
    :try_start_3
    const-string v1, "InstallSession"

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v1

    .line 628
    :goto_0
    :try_start_4
    invoke-virtual {v9, v11}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 629
    const/4 v3, 0x0

    invoke-virtual {v1, v11, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    .line 632
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 635
    :goto_1
    if-eqz v8, :cond_0

    .line 636
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 638
    :cond_0
    if-eqz v1, :cond_1

    .line 639
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 652
    :cond_1
    if-eqz v0, :cond_2

    .line 653
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_2
    move v0, v7

    .line 656
    :goto_2
    return v0

    .line 631
    :cond_3
    :try_start_6
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 635
    if-eqz v9, :cond_4

    .line 636
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 638
    :cond_4
    if-eqz v1, :cond_5

    .line 639
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 642
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "INSTALL.VIEW.ACTION"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    const/high16 v2, 0x8000000

    invoke-static {p0, v10, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 648
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 652
    if-eqz v0, :cond_6

    .line 653
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_6
    move v0, v6

    .line 656
    goto :goto_2

    .line 635
    :catchall_0
    move-exception v1

    move-object v9, v8

    :goto_3
    if-eqz v9, :cond_7

    .line 636
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 638
    :cond_7
    if-eqz v8, :cond_8

    .line 639
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_8
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 649
    :catch_1
    move-exception v1

    .line 652
    :goto_4
    if-eqz v0, :cond_9

    .line 653
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_9
    move v0, v7

    .line 650
    goto :goto_2

    .line 652
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v8, :cond_a

    .line 653
    invoke-virtual {v8}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_a
    throw v0

    .line 652
    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_5

    .line 649
    :catch_2
    move-exception v0

    move-object v0, v8

    goto :goto_4

    .line 635
    :catchall_3
    move-exception v1

    goto :goto_3

    :catchall_4
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    goto :goto_3

    .line 632
    :catch_3
    move-exception v1

    move-object v1, v8

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v1, v8

    move-object v8, v9

    goto :goto_1
.end method

.method private static installPackage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 568
    sget-object v0, Lcom/meizu/common/recall/InstallView;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "installPackage"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 570
    if-nez v0, :cond_6

    .line 571
    :try_start_0
    const-string v0, "android.content.pm.FlymePackageManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 572
    sget-object v2, Lcom/meizu/common/recall/InstallView;->mFlymePackageManager:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 573
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 574
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/recall/InstallView;->mFlymePackageManager:Ljava/lang/Object;

    .line 576
    :cond_0
    sget-object v2, Lcom/meizu/common/recall/InstallView;->mFlymePackageManager:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 606
    :cond_1
    :goto_0
    return v1

    .line 580
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_5

    .line 581
    const/4 v2, 0x0

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 583
    const/16 v3, 0x2000

    .line 584
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 586
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 587
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 591
    :goto_1
    if-eqz v0, :cond_1

    .line 594
    invoke-static {p0, v0, p1}, Lcom/meizu/common/recall/InstallView;->installAndroidP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 596
    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 598
    :cond_5
    const-string v2, "installPackage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 599
    sget-object v2, Lcom/meizu/common/recall/InstallView;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "installPackage"

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_6
    sget-object v2, Lcom/meizu/common/recall/InstallView;->mFlymePackageManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 603
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method private setCallbackAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 773
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "INSTALL.VIEW.ACTION"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mBuildAction:Ljava/lang/String;

    .line 774
    return-void
.end method

.method private unregisterReceivers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 682
    iget-boolean v0, p0, Lcom/meizu/common/recall/InstallView;->hasRegisterInstallResult:Z

    if-eqz v0, :cond_0

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mInstallResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    iput-boolean v2, p0, Lcom/meizu/common/recall/InstallView;->hasRegisterInstallResult:Z

    .line 690
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/recall/InstallView;->hasRegisterSystemBroacast:Z

    if-eqz v0, :cond_1

    .line 692
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :goto_1
    iput-boolean v2, p0, Lcom/meizu/common/recall/InstallView;->hasRegisterSystemBroacast:Z

    .line 698
    :cond_1
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 693
    :catch_1
    move-exception v0

    .line 694
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/meizu/common/recall/InstallView;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 445
    return-void
.end method

.method protected getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 496
    invoke-virtual {p0, p2}, Lcom/meizu/common/recall/InstallView;->getSystemAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 513
    :goto_0
    return-object v0

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 501
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_1

    .line 504
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 505
    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 506
    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 508
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDescText:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallButtonCompleteText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonCompleteText:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallButtonIdleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonIdleText:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallingText:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/meizu/common/recall/InstallView$State;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mState:Lcom/meizu/common/recall/InstallView$State;

    return-object v0
.end method

.method protected getSystemAppPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 454
    sget-object v0, Lcom/meizu/common/recall/InstallView;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "getSystemAppPath"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 456
    if-nez v0, :cond_5

    .line 457
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    .line 458
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 459
    const/16 v2, 0x2000

    .line 460
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 462
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 485
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 466
    goto :goto_0

    .line 468
    :cond_2
    const-string v0, "android.content.pm.FlymePackageManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 469
    sget-object v2, Lcom/meizu/common/recall/InstallView;->mFlymePackageManager:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 470
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 471
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/recall/InstallView;->mFlymePackageManager:Ljava/lang/Object;

    .line 473
    :cond_3
    sget-object v2, Lcom/meizu/common/recall/InstallView;->mFlymePackageManager:Ljava/lang/Object;

    if-nez v2, :cond_4

    move-object v0, v1

    .line 475
    goto :goto_0

    .line 477
    :cond_4
    const-string v2, "getSystemAppPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 478
    sget-object v2, Lcom/meizu/common/recall/InstallView;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "getSystemAppPath"

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_5
    sget-object v2, Lcom/meizu/common/recall/InstallView;->mFlymePackageManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 485
    goto :goto_0

    .line 482
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method protected installApplication(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 538
    new-instance v0, Lcom/meizu/common/recall/InstallView$InstallTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/recall/InstallView$InstallTask;-><init>(Lcom/meizu/common/recall/InstallView;Lcom/meizu/common/recall/InstallView$1;)V

    .line 539
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/common/recall/InstallView$InstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 540
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 518
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 519
    iget-boolean v0, p0, Lcom/meizu/common/recall/InstallView;->mWindowVisiable:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 520
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mCollector:Lcom/meizu/common/recall/RecallUsageCollector;

    const-string v1, "recall_show"

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView;->mCurrentPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/recall/RecallUsageCollector;->onVisiableLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 528
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/recall/InstallView;->mWindowVisiable:Z

    .line 530
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 664
    iget-boolean v0, p0, Lcom/meizu/common/recall/InstallView;->hasRegisterInstallResult:Z

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 667
    invoke-direct {p0}, Lcom/meizu/common/recall/InstallView;->getCallbackAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView;->mInstallResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 669
    iput-boolean v3, p0, Lcom/meizu/common/recall/InstallView;->hasRegisterInstallResult:Z

    .line 671
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/recall/InstallView;->hasRegisterSystemBroacast:Z

    if-nez v0, :cond_1

    .line 673
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 674
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 677
    iput-boolean v3, p0, Lcom/meizu/common/recall/InstallView;->hasRegisterSystemBroacast:Z

    .line 679
    :cond_1
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 378
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView;->mAppPackageName:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/recall/InstallView;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/InstallView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 380
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mIconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 368
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView;->mDescText:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method public setInstallButtonCompleteText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonCompleteText:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setInstallButtonIdleText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonIdleText:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setInstallingText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 398
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView;->mInstallingText:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/recall/LoadingTextView;->setLoadText(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setOnInstallViewListener(Lcom/meizu/common/recall/InstallView$OnInstallViewListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView;->mOnInstallViewListener:Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    .line 113
    return-void
.end method

.method public setState(Lcom/meizu/common/recall/InstallView$State;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 275
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView;->mState:Lcom/meizu/common/recall/InstallView$State;

    .line 276
    sget-object v0, Lcom/meizu/common/recall/InstallView$7;->$SwitchMap$com$meizu$common$recall$InstallView$State:[I

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mState:Lcom/meizu/common/recall/InstallView$State;

    invoke-virtual {v1}, Lcom/meizu/common/recall/InstallView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonIdleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    invoke-virtual {v0, v4}, Lcom/meizu/common/recall/LoadingTextView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 285
    if-eqz p2, :cond_0

    .line 286
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/recall/InstallView;->changeStateAnimation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 289
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    invoke-virtual {v0, v2}, Lcom/meizu/common/recall/LoadingTextView;->setAlpha(F)V

    .line 290
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    invoke-virtual {v0, v3}, Lcom/meizu/common/recall/LoadingTextView;->setVisibility(I)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 296
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mInstallButtonCompleteText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 297
    if-eqz p2, :cond_1

    .line 298
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/recall/InstallView;->changeStateAnimation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 301
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    invoke-virtual {v0, v2}, Lcom/meizu/common/recall/LoadingTextView;->setAlpha(F)V

    .line 302
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mLoadingTextView:Lcom/meizu/common/recall/LoadingTextView;

    invoke-virtual {v0, v4}, Lcom/meizu/common/recall/LoadingTextView;->setVisibility(I)V

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 358
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView;->mTitleText:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    return-void
.end method
