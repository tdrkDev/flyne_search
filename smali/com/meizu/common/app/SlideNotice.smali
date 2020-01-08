.class public Lcom/meizu/common/app/SlideNotice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/SlideNotice$NoticeHandler;,
        Lcom/meizu/common/app/SlideNotice$SlideContainerView;,
        Lcom/meizu/common/app/SlideNotice$SlideViewController;,
        Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;
    }
.end annotation


# static fields
.field private static final HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final NOTICE_CLICK:I = 0x0

.field public static final NOTICE_TYPE_FAILURE:I = 0x0

.field public static final NOTICE_TYPE_SUCCESS:I = 0x1

.field public static final SHOW_ANIMATION_DURATION:I = 0x140

.field private static final SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SLIDE_TYPE_FROM_BOTTOM:I = 0x2

.field public static final SLIDE_TYPE_FROM_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlideNotice"

.field private static mService:Lcom/meizu/common/app/SlideNoticeManager;

.field private static sMeizuFlag:Ljava/lang/reflect/Field;


# instance fields
.field private isAutoAdaptNavigationBar:Z

.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 82
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3eeb851f    # 0.46f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    sput-object v0, Lcom/meizu/common/app/SlideNotice;->SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 83
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3d79db23    # 0.061f

    const v3, 0x3e75c28f    # 0.24f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    sput-object v0, Lcom/meizu/common/app/SlideNotice;->HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {v0, p0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;-><init>(Lcom/meizu/common/app/SlideNotice;Lcom/meizu/common/app/SlideNotice;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    .line 143
    return-void
.end method

.method static synthetic access$1000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/app/SlideNotice;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice;->isAutoAdaptNavigationBar:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/common/app/SlideNotice;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/meizu/common/app/SlideNotice;->isAutoAdaptNavigationBar:Z

    return p1
.end method

.method static synthetic access$1300()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .prologue
    .line 74
    sput-object p0, Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getManager()Lcom/meizu/common/app/SlideNoticeManager;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManager;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManager;

    .line 123
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lcom/meizu/common/app/SlideNoticeManager;

    invoke-direct {v0}, Lcom/meizu/common/app/SlideNoticeManager;-><init>()V

    sput-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManager;

    .line 123
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManager;

    goto :goto_0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;
    .locals 2

    .prologue
    .line 469
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    return-object v0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/meizu/common/app/SlideNotice;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-static {p0, p1, v0, v0}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    return-object v0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;
    .locals 1

    .prologue
    .line 493
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0, p1, p3}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 494
    return-object v0
.end method

.method public static makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;
    .locals 2

    .prologue
    .line 517
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/app/SlideNotice;->makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    return-object v0
.end method

.method public static makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/meizu/common/app/SlideNotice;
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 532
    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/SlideNotice;->setNoticeType(I)V

    .line 534
    return-object v0
.end method

.method public static makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;
    .locals 1

    .prologue
    .line 551
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 552
    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice;->setText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/SlideNotice;->setNoticeType(I)V

    .line 554
    iput p3, v0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    .line 555
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 423
    :cond_0
    return-void
.end method

.method public cancelNotice()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->hide()V

    .line 440
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->getManager()Lcom/meizu/common/app/SlideNoticeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, v1}, Lcom/meizu/common/app/SlideNoticeManager;->cancelNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)V

    .line 441
    return-void
.end method

.method public cancelWithoutAnim()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    .line 448
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->getManager()Lcom/meizu/common/app/SlideNoticeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, v1}, Lcom/meizu/common/app/SlideNoticeManager;->cancelNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)V

    .line 449
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->cancel()V

    .line 414
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isShowing()Z

    move-result v0

    return v0
.end method

.method public resetSlideFrom()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->resetTop()V

    .line 243
    return-void
.end method

.method public setActionBarToTop(Z)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setBelowDefaultActionBar(Z)V

    .line 253
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setAnchor(Landroid/view/View;)V

    .line 346
    return-void
.end method

.method public setBeginColor(I)V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->setNoticeBackgroundColor(I)V

    .line 161
    return-void
.end method

.method public setBelowDefaultActionBar(Z)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setBelowDefaultActionBar(Z)V

    .line 262
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setCustomView(Landroid/view/View;)V

    .line 565
    return-void
.end method

.method public setDuration(I)V
    .locals 1

    .prologue
    .line 326
    iput p1, p0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    .line 327
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 328
    :cond_0
    return-void
.end method

.method public setEndColor(I)V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->setNoticeBackgroundColor(I)V

    .line 169
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iput p1, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    .line 506
    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setNoticeHeight(I)V

    .line 271
    return-void
.end method

.method public setIsOverlaidByStatusBar(Z)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setIsOverlaidByStatusBar(Z)V

    .line 308
    return-void
.end method

.method public setLeft(I)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setLeft(I)V

    .line 234
    return-void
.end method

.method public setNoTitleBarStyle(Z)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setIsOverlaidByStatusBar(Z)V

    .line 299
    return-void
.end method

.method public setNoticeBackgroundColor(I)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setNoticeBgColor(I)V

    .line 178
    return-void
.end method

.method public setNoticeType(I)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 191
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 200
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_slide_notice_success_begin_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setBeginColor(I)V

    .line 202
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_slide_notice_success_end_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setEndColor(I)V

    goto :goto_0

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_slide_notice_failure_begin_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setBeginColor(I)V

    .line 195
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_slide_notice_failure_end_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setEndColor(I)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnClickNoticeListener(Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setOnClickNoticeListener(Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;)V

    .line 317
    return-void
.end method

.method public setSlideAnimEnable(Z)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setSlideAnimEnable(Z)V

    .line 384
    return-void
.end method

.method public setSlideType(I)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iput p1, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    .line 577
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    return-void
.end method

.method public setTop(I)V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->setYOffset(I)V

    .line 216
    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setNoticeWidth(I)V

    .line 280
    return-void
.end method

.method public setYOffset(I)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iput p1, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    .line 225
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 353
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public showAndFinish(J)V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public showNotice()V
    .locals 4

    .prologue
    .line 390
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->getManager()Lcom/meizu/common/app/SlideNoticeManager;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget v3, p0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/app/SlideNoticeManager;->enqueueNotice(Ljava/lang/CharSequence;Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;I)V

    .line 393
    return-void
.end method

.method public showNotice(Z)V
    .locals 1

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->show()V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->showNotice()V

    goto :goto_0
.end method

.method public slideToCancel()V
    .locals 0

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->cancelNotice()V

    .line 432
    return-void
.end method

.method public slideToShow()V
    .locals 0

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->showNotice()V

    .line 367
    return-void
.end method

.method public slideToShow(Z)V
    .locals 0

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->showNotice(Z)V

    .line 375
    return-void
.end method
