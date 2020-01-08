.class public Lcom/meizu/common/util/SearchAnimHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ICON_SCALE:F

.field private final SEARCH_BAR_DURATION:J

.field private final SEARCH_ICON_COLLAPSE_DURATION:J

.field private final SEARCH_ICON_EXPAND_DURATION:J

.field private interpolator1:Landroid/animation/TimeInterpolator;

.field private interpolator2:Landroid/animation/TimeInterpolator;

.field private mContainerView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field public mExitAnimSet:Landroid/animation/AnimatorSet;

.field private mHintText:Ljava/lang/String;

.field private mHomeUpView:Landroid/view/View;

.field public mOnAnimEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSearchBar:Landroid/view/View;

.field private mSearchIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x100

    iput-wide v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->SEARCH_BAR_DURATION:J

    .line 35
    const-wide/16 v0, 0x120

    iput-wide v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->SEARCH_ICON_EXPAND_DURATION:J

    .line 36
    const-wide/16 v0, 0xd0

    iput-wide v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->SEARCH_ICON_COLLAPSE_DURATION:J

    .line 42
    const v0, 0x3faf5c29    # 1.37f

    iput v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->ICON_SCALE:F

    .line 58
    iput-object p4, p0, Lcom/meizu/common/util/SearchAnimHelper;->mOnAnimEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    .line 60
    if-eqz p2, :cond_0

    .line 61
    iput-object p2, p0, Lcom/meizu/common/util/SearchAnimHelper;->mContainerView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mContainerView:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->mc_search_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchBar:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mContainerView:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->mc_search_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mContainerView:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->mc_search_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/util/SearchAnimHelper;->initInterpolator()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/util/SearchAnimHelper;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/util/SearchAnimHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHintText:Ljava/lang/String;

    return-object v0
.end method

.method private initInterpolator()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 71
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3c23d70a    # 0.01f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator2:Landroid/animation/TimeInterpolator;

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    .line 75
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator2:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method private isAnimatedViewExits()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDrawDuringWindowAnimation(Landroid/view/View;Z)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "getViewRootImpl"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 201
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setDrawDuringWindowsAnimating"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 203
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return v0

    .line 205
    :catch_0
    move-exception v0

    move v0, v1

    .line 206
    goto :goto_0
.end method

.method public static setupSearchBackTransition(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 322
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 323
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 324
    return-void
.end method

.method public static setupSearchEnterTransition(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 306
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 307
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$transition;->mc_search_enter_scale:I

    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 308
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$transition;->mc_search_exit_scale:I

    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementExitTransition(Landroid/transition/Transition;)V

    .line 309
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$transition;->mc_search_enter_fade:I

    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 310
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$transition;->mc_search_enter_fade:I

    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 312
    :cond_0
    return-void
.end method

.method public static setupSearchEnterTransitionF8(Landroid/app/Activity;)V
    .locals 14

    .prologue
    const v13, 0x3f2b851f    # 0.67f

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 270
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$transition;->mc_search_enter_scale:I

    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 271
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$transition;->mc_search_exit_scale:I

    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementExitTransition(Landroid/transition/Transition;)V

    .line 273
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 274
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 276
    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3}, Landroid/transition/Fade;-><init>()V

    .line 277
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v12, v11, v13, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/transition/Fade;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 278
    const-wide/16 v4, 0x140

    invoke-virtual {v3, v4, v5}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    .line 279
    sget v4, Lcom/meizu/common/R$string;->mc_search_view_toolbar_transition_name:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v10}, Landroid/transition/Fade;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    .line 282
    new-instance v4, Landroid/transition/Fade;

    invoke-direct {v4}, Landroid/transition/Fade;-><init>()V

    .line 283
    const-wide/16 v6, 0x140

    invoke-virtual {v4, v6, v7}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    .line 284
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e3851ec    # 0.18f

    const v7, 0x3f333333    # 0.7f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/transition/Fade;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 285
    sget v5, Lcom/meizu/common/R$string;->mc_search_view_container_transition_name:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Landroid/transition/Fade;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    .line 287
    new-instance v5, Landroid/transition/Fade;

    invoke-direct {v5}, Landroid/transition/Fade;-><init>()V

    .line 288
    const-wide/16 v6, 0x30

    invoke-virtual {v5, v6, v7}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    .line 289
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v12, v11, v13, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/transition/Fade;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 290
    sget v6, Lcom/meizu/common/R$string;->mc_search_view_container_transition_name:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/transition/Fade;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    .line 292
    invoke-virtual {v1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 293
    invoke-virtual {v1, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 295
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 296
    invoke-virtual {v2, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 298
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 301
    invoke-virtual {v0, v2}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 303
    :cond_0
    return-void
.end method

.method public static setupSearchOutTransition(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 251
    sget v0, Lcom/meizu/common/R$id;->mc_search_layout_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    sget v1, Lcom/meizu/common/R$id;->mc_search_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method public static setupSearchTransition(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 240
    invoke-static {p0}, Lcom/meizu/common/util/SearchAnimHelper;->setupSearchEnterTransition(Landroid/app/Activity;)V

    .line 241
    return-void
.end method

.method public static startSearchActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 220
    sget v0, Lcom/meizu/common/R$string;->mc_search_view_share_element_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    sget v1, Lcom/meizu/common/R$id;->mc_search_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 223
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 225
    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public startSearchExitAnim(FF)V
    .locals 12

    .prologue
    const-wide/16 v10, 0xd0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 142
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/util/SearchAnimHelper;->isAnimatedViewExits()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 149
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchBar:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    const-wide/16 v2, 0x100

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v6, [F

    aput p1, v2, v7

    aput p2, v2, v8

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 158
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 159
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 160
    iget-object v4, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    new-array v5, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 162
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 164
    iget-object v2, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 165
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator2:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->mOnAnimEndListener:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v3, :cond_2

    .line 168
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->mOnAnimEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    .line 173
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 175
    iget-object v4, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    const-wide/16 v4, 0x100

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    iget-object v4, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    aput-object v2, v5, v6

    aput-object v3, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 182
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 184
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0

    .line 179
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 152
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 158
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3faf5c29    # 1.37f
    .end array-data

    .line 159
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3faf5c29    # 1.37f
    .end array-data

    .line 164
    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 174
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startSearchExpandAnim(FF)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x120

    const-wide/16 v8, 0x100

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 87
    invoke-direct {p0}, Lcom/meizu/common/util/SearchAnimHelper;->isAnimatedViewExits()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 92
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 93
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHintText:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 96
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v5, [F

    aput p1, v1, v6

    aput p2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 97
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 98
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    iget-object v1, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator2:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    new-instance v2, Lcom/meizu/common/util/SearchAnimHelper$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/util/SearchAnimHelper$1;-><init>(Lcom/meizu/common/util/SearchAnimHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    iget-object v2, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchBar:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 123
    iget-object v4, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 125
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 129
    :cond_1
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 130
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 131
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 97
    nop

    :array_0
    .array-data 4
        0x3faf5c29    # 1.37f
        0x3f800000    # 1.0f
    .end array-data

    .line 98
    :array_1
    .array-data 4
        0x3faf5c29    # 1.37f
        0x3f800000    # 1.0f
    .end array-data

    .line 103
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 117
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 122
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
