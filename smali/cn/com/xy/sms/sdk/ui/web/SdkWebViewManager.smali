.class public Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$InitRunnable;
    }
.end annotation


# static fields
.field public static final CONFIG_WEB_TOP_MENU:I = 0x2

.field public static final ERROR_TYPE_NO_NET_WORK:I = 0x2

.field public static final ERROR_TYPE_OTHER:I = 0x1

.field private static final INNER_HTTP_URL:[Ljava/lang/String;

.field public static final MSG_TYPE_CONVERSATION:I = 0x1

.field public static final MSG_TYPE_LOADURL:I = 0x2


# instance fields
.field private mActionType:Ljava/lang/String;

.field private mAi:Ljava/lang/String;

.field private mChannelId:Ljava/lang/String;

.field private mConversation:Lorg/json/JSONObject;

.field private mDuoquText:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsCallBackData:Z

.field private mIsWebViewLoaded:Z

.field private mJsObj:Lorg/json/JSONObject;

.field private mNi:Ljava/lang/String;

.field private mPid:Ljava/lang/String;

.field private mSdkJs:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

.field private mSdkVersion:Ljava/lang/String;

.field private mUv:Ljava/lang/String;

.field private mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

.field private mWebView:Landroid/webkit/WebView;

.field private mXid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 342
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bizport.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duoqu.in"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "microfountain.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mfexcel.com"

    aput-object v2, v0, v1

    sput-object v0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->INNER_HTTP_URL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mXid:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mPid:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mUv:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mAi:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mNi:Ljava/lang/String;

    .line 375
    iput-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    .line 376
    iput-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    .line 444
    iput-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mConversation:Lorg/json/JSONObject;

    .line 445
    iput-boolean v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIsWebViewLoaded:Z

    .line 446
    iput-boolean v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIsCallBackData:Z

    .line 448
    new-instance v0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$4;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mHandler:Landroid/os/Handler;

    .line 60
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    .line 64
    invoke-interface {p1}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    .line 66
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->initWebView()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$InitRunnable;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$InitRunnable;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    return-object v0
.end method

.method static synthetic access$202(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIsWebViewLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->sendConversationDataChange()V

    return-void
.end method

.method static synthetic access$400(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mSdkJs:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->doConversationStateChange()V

    return-void
.end method

.method static synthetic access$600(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->loadWebViewUrl()V

    return-void
.end method

.method static synthetic access$700(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mConversation:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$800(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private doConversationStateChange()V
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIsCallBackData:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIsWebViewLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mConversation:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIsCallBackData:Z

    .line 465
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$5;

    invoke-direct {v1, p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$5;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 474
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    if-nez v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    .line 388
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    const-string v1, "JSONDATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initWebView()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 102
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 108
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 109
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 112
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 113
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 115
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 116
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 117
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 119
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "database"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$1;

    invoke-direct {v1, p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$1;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 137
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;

    invoke-direct {v1, p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 181
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;

    invoke-direct {v1, p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 252
    new-instance v0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    invoke-direct {v0, p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;-><init>(Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;)V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mSdkJs:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    .line 253
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mSdkJs:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    const-string v2, "injs"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private loadWebViewUrl()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 260
    invoke-direct {p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->initData()V

    .line 261
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    const-string v1, "actionType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mActionType:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mSdkJs:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mActionType:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->queryJson(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    if-eqz v0, :cond_9

    const-string v1, "WEB_URL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 269
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_2
    :goto_1
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 300
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;)I

    move-result v0

    .line 301
    if-eqz v0, :cond_3

    if-ne v0, v4, :cond_e

    .line 302
    :cond_3
    invoke-virtual {p0, v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getHttpRequsetHeader(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 303
    if-nez v0, :cond_4

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    :cond_4
    const-string v2, "xy-channel"

    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mChannelId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v2, "xy-sdk-ver"

    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mSdkVersion:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v2, "xy-req-time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v2, "xy-x"

    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mXid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v2, "xy-p"

    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mPid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v2, "menuName"

    invoke-virtual {p0, v2}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    const-string v3, "menuName"

    invoke-virtual {p0, v3}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 315
    :cond_5
    :try_start_0
    const-string v2, "menuName"

    invoke-virtual {p0, v2}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    const-string v3, "xy-menu-name"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_6
    :goto_2
    const-string v2, "publicId"

    invoke-virtual {p0, v2}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, ""

    const-string v3, "publicId"

    invoke-virtual {p0, v3}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 323
    :cond_7
    :try_start_1
    const-string v2, "publicId"

    invoke-virtual {p0, v2}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    const-string v3, "xy-public-id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :cond_8
    :goto_3
    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v2, v1, v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->requestWebViewLoad(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 271
    :cond_9
    const-string v0, "HOST"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 274
    sget-object v0, Lcn/com/xy/sms/sdk/net/NetWebUtil;->WEB_SERVER_URL:Ljava/lang/String;

    .line 276
    :cond_a
    const-string v1, "PAGEVIEW"

    invoke-virtual {p0, v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 279
    const-string v1, "WEB_MAP_SITE"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mActionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 280
    const-string v0, "address"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://api.map.baidu.com/geocoder?address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&output=html&src=xiaoyuan|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mDuoquText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 285
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0, v1}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->requestWebViewLoad(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_b
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0, v4, v5}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->showError(ILjava/util/Map;)V

    goto/16 :goto_0

    .line 291
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h5service?action_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mActionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&xy_channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&xy_sdkver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mSdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_d
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 317
    :catch_0
    move-exception v2

    .line 318
    const-string v3, "SdkWebActivity error "

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 325
    :catch_1
    move-exception v2

    .line 326
    const-string v3, "SdkWebActivity error "

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 333
    :cond_e
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    const/4 v2, 0x2

    invoke-interface {v0, v2, v5}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->showError(ILjava/util/Map;)V

    .line 334
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0, v1}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->setEndUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :cond_f
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0, v4, v5}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->showError(ILjava/util/Map;)V

    goto/16 :goto_0
.end method

.method private sendConversationDataChange()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 487
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 491
    :cond_0
    return-void
.end method


# virtual methods
.method public checkOrientation()I
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->checkOrientation()I

    move-result v0

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doDestroy()V
    .locals 4

    .prologue
    .line 541
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 546
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    .line 547
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    const-string v1, "JSONDATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 558
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "JSONDATA"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    const-string v2, ""

    .line 563
    const-string v2, "WEB_QUERY_EXPRESS_FLOW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 564
    const-string v0, "cn.com.xy.sms.ExpressStatusReceiver"

    .line 572
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    const-string v1, "SdkWebActivity error "

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 566
    :cond_3
    const-string v2, "WEB_QUERY_FLIGHT_TREND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 567
    const-string v0, "cn.com.xy.sms.FlightStateQueryReceiver"

    goto :goto_2

    .line 570
    :cond_4
    const-string v0, "cn.com.xy.sms.TrianStationSelectedReceiver"

    goto :goto_2
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHttpRequsetHeader(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 345
    if-eqz p1, :cond_0

    sget-object v2, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->INNER_HTTP_URL:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->INNER_HTTP_URL:[Ljava/lang/String;

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    sget-object v3, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->INNER_HTTP_URL:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 351
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 352
    const/4 v1, 0x1

    .line 357
    :cond_2
    if-eqz v1, :cond_0

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 362
    const-string v1, "XY_CK"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mChannelId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "XY_XID"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mXid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v1, "XY_MID"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mPid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v1, "XY_SV"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mSdkVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v1, "XY_UV"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mUv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v1, "XY_AI"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mAi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "XY_NI"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mNi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getParamData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    if-eqz p1, :cond_1

    .line 401
    :try_start_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 402
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v1}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    .line 403
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    const-string v2, "JSONDATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    .line 408
    :cond_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 415
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 416
    const-string v0, ""

    .line 418
    :cond_2
    return-object v0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    const-string v2, "SdkWebActivity error "

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->getParamData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public initParams(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 526
    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->initAppKey()V

    .line 527
    invoke-static {p1}, Lcn/com/xy/sms/sdk/constant/Constant;->initContext(Landroid/content/Context;)V

    .line 528
    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mChannelId:Ljava/lang/String;

    .line 529
    invoke-static {}, Lcn/com/xy/sms/util/ParseManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mSdkVersion:Ljava/lang/String;

    .line 530
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getXid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mXid:Ljava/lang/String;

    .line 531
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getPid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mPid:Ljava/lang/String;

    .line 532
    invoke-static {}, Lcn/com/xy/sms/util/ParseManager;->getUIVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mUv:Ljava/lang/String;

    .line 533
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getAI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mAi:Ljava/lang/String;

    .line 534
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getNI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mNi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    const-string v1, "SdkWebActivity error "

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public postData(Lorg/json/JSONObject;Z)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$6;

    invoke-direct {v1, p0, p1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$6;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 519
    :cond_0
    return-void
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 477
    packed-switch p1, :pswitch_data_0

    .line 484
    :goto_0
    return-void

    .line 479
    :pswitch_0
    check-cast p2, Lorg/json/JSONObject;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mConversation:Lorg/json/JSONObject;

    .line 480
    invoke-direct {p0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->sendConversationDataChange()V

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setParamData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 422
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 427
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mWebAcitvity:Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    .line 428
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mIntent:Landroid/content/Intent;

    const-string v1, "JSONDATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    .line 433
    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->mJsObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const-string v1, "SdkWebActivity error "

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
