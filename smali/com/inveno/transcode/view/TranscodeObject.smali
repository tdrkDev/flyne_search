.class public Lcom/inveno/transcode/view/TranscodeObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/transcode/view/TranscodeObject$a;,
        Lcom/inveno/transcode/view/TranscodeObject$b;
    }
.end annotation


# static fields
.field public static final DEATIL_REPORT_PARAMS_JSCLICK:I = 0xb

.field public static final DEATIL_REPORT_PARAMS_JSLOAD:I = 0x9

.field public static final DEATIL_REPORT_PARAMS_JSMOVE:I = 0xa

.field public static final INVENO_APP:Ljava/lang/String; = "invenoapp"

.field public static final INVENO_ID:Ljava/lang/String; = "invenoid"

.field public static final INVENO_UID:Ljava/lang/String; = "invenouid"

.field public static final OPEN_SOURCE:I = 0x3

.field public static final RECOMMEND_TRANSCODE_AUTO_TRIGGER:I = 0x5

.field public static final RECOMMEND_TRANSCODE_CUSTOMER_TRIGGER:I = 0x6

.field public static final SHARE:I = 0x4

.field public static final TRANSCODE_FAIL:I = 0x1

.field public static final TRANSCODE_SUCESS:I = 0x2

.field public static final TRANSCODE_SUCESS_JSON:I = 0x8

.field private static final TRANSCODE_URL:I = 0x0

.field public static final interfaceName:Ljava/lang/String; = "InvenoTransCode"

.field public static final interfaceNameReport:Ljava/lang/String; = "InvenoTransCodeReport"


# instance fields
.field private localUid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

.field private mITranscodeJsonInfo:Lcom/inveno/transcode/view/ITranscodeJsonInfo;

.field private mId:Ljava/lang/String;

.field private mOriginal:Ljava/lang/String;

.field private mReportParams:Lcom/inveno/transcode/view/IDetailJSReportParams;

.field private mSource:Ljava/lang/String;

.field private mTiitle:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field private mTranscode:Lcom/inveno/transcode/presenter/c;

.field private mTranscodeInner:Lcom/inveno/transcode/view/TranscodeObject$b;

.field private mTranscodeOpenSource:Lcom/inveno/transcode/view/ITranscodeOpenSource;

.field private mTranscodeOrigin:Lcom/inveno/transcode/view/ITranscodeOrigin;

.field private mUid:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inveno/transcode/view/ITranscodeCallback;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/inveno/transcode/view/a;

    invoke-direct {v0, p0}, Lcom/inveno/transcode/view/a;-><init>(Lcom/inveno/transcode/view/TranscodeObject;)V

    iput-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscode:Lcom/inveno/transcode/presenter/c;

    .line 582
    new-instance v0, Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-direct {v0, p0}, Lcom/inveno/transcode/view/TranscodeObject$a;-><init>(Lcom/inveno/transcode/view/TranscodeObject;)V

    iput-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    .line 106
    :try_start_0
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 107
    iput-object p1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/transcode/a/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->localUid:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/inveno/transcode/view/TranscodeObject$b;

    invoke-direct {v0, p0, p2}, Lcom/inveno/transcode/view/TranscodeObject$b;-><init>(Lcom/inveno/transcode/view/TranscodeObject;Lcom/inveno/transcode/view/ITranscodeCallback;)V

    iput-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeInner:Lcom/inveno/transcode/view/TranscodeObject$b;

    .line 120
    return-void

    .line 109
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/inveno/transcode/view/TranscodeObject;)Lcom/inveno/transcode/view/TranscodeObject$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/inveno/transcode/view/TranscodeObject;)Lcom/inveno/transcode/view/ITranscodeOpenSource;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeOpenSource:Lcom/inveno/transcode/view/ITranscodeOpenSource;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/inveno/transcode/view/TranscodeObject;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inveno/transcode/view/TranscodeObject;)Lcom/inveno/transcode/presenter/c;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscode:Lcom/inveno/transcode/presenter/c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTiitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mOriginal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/inveno/transcode/view/TranscodeObject;->checkTranscodeLocalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->localUid:Ljava/lang/String;

    return-object v0
.end method

.method private checkTranscodeLocalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/inveno/transcode/view/TranscodeObject;->isContextFileDirExistCSS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const-string v0, "/android_asset/transcode.html"

    sput-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    sget-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->c:Ljava/lang/String;

    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isContextFileDirExistCSS()Z
    .locals 2

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "transcode.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getArticleinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeInner:Lcom/inveno/transcode/view/TranscodeObject$b;

    invoke-virtual {v0, p1}, Lcom/inveno/transcode/view/TranscodeObject$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mITranscodeJsonInfo:Lcom/inveno/transcode/view/ITranscodeJsonInfo;

    if-eqz v1, :cond_0

    .line 209
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 210
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 211
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    iget-object v2, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v2, v1}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendMessage(Landroid/os/Message;)Z

    .line 214
    :cond_0
    return-object v0
.end method

.method getIDetailJSReportParams()Lcom/inveno/transcode/view/IDetailJSReportParams;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mReportParams:Lcom/inveno/transcode/view/IDetailJSReportParams;

    return-object v0
.end method

.method getITranscodeJsonInfo()Lcom/inveno/transcode/view/ITranscodeJsonInfo;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mITranscodeJsonInfo:Lcom/inveno/transcode/view/ITranscodeJsonInfo;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mId:Ljava/lang/String;

    return-object v0
.end method

.method getOriginal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mOriginal:Ljava/lang/String;

    return-object v0
.end method

.method getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTiitle:Ljava/lang/String;

    return-object v0
.end method

.method getTranscodeInner()Lcom/inveno/transcode/view/TranscodeObject$b;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeInner:Lcom/inveno/transcode/view/TranscodeObject$b;

    return-object v0
.end method

.method getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method getmTranscodeOrigin()Lcom/inveno/transcode/view/ITranscodeOrigin;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeOrigin:Lcom/inveno/transcode/view/ITranscodeOrigin;

    return-object v0
.end method

.method public goToDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x5

    .line 225
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeOrigin:Lcom/inveno/transcode/view/ITranscodeOrigin;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 227
    iput v1, v0, Landroid/os/Message;->what:I

    .line 228
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    aput-object p6, v1, v3

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v1, v0}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendMessage(Landroid/os/Message;)Z

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 233
    iput v3, v0, Landroid/os/Message;->what:I

    .line 234
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    aput-object p6, v1, v3

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v1, v0}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onJsClick(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 320
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 321
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 322
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v1, v0}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendMessage(Landroid/os/Message;)Z

    .line 326
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeOpenSource:Lcom/inveno/transcode/view/ITranscodeOpenSource;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeOpenSource:Lcom/inveno/transcode/view/ITranscodeOpenSource;

    invoke-interface {v0, p2}, Lcom/inveno/transcode/view/ITranscodeOpenSource;->openSource(Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 333
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    .line 340
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onJsLoad(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 287
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 288
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 289
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v1, v0}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void
.end method

.method public onJsMove(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 304
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 305
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 306
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v1, v0}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendMessage(Landroid/os/Message;)Z

    .line 308
    return-void
.end method

.method public openSource(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 246
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 247
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 248
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v1, v0}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendMessage(Landroid/os/Message;)Z

    .line 250
    return-void
.end method

.method public setITranscodeJsonInfo(Lcom/inveno/transcode/view/ITranscodeJsonInfo;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mITranscodeJsonInfo:Lcom/inveno/transcode/view/ITranscodeJsonInfo;

    .line 132
    return-void
.end method

.method public setReportParams(Lcom/inveno/transcode/view/IDetailJSReportParams;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mReportParams:Lcom/inveno/transcode/view/IDetailJSReportParams;

    .line 136
    return-void
.end method

.method public setTranscodeOpenSource(Lcom/inveno/transcode/view/ITranscodeOpenSource;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeOpenSource:Lcom/inveno/transcode/view/ITranscodeOpenSource;

    .line 128
    return-void
.end method

.method public setTranscodeOrigin(Lcom/inveno/transcode/view/ITranscodeOrigin;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTranscodeOrigin:Lcom/inveno/transcode/view/ITranscodeOrigin;

    .line 124
    return-void
.end method

.method public share(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 263
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 264
    iput v4, v0, Landroid/os/Message;->what:I

    .line 265
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    aput-object p5, v1, v4

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v1, v0}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendMessage(Landroid/os/Message;)Z

    .line 267
    const-string v0, "\u672c\u5730\u5206\u4eab"

    return-object v0
.end method

.method public shareInfoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 272
    const-string v0, "\u672c\u5730\u5206\u4eab"

    return-object v0
.end method

.method public transcodeWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 179
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/transcode/view/TranscodeObject;->transcodeWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transcodeWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iput-object p1, p0, Lcom/inveno/transcode/view/TranscodeObject;->mUid:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/inveno/transcode/view/TranscodeObject;->mId:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTiitle:Ljava/lang/String;

    .line 196
    iput-object p4, p0, Lcom/inveno/transcode/view/TranscodeObject;->mSource:Ljava/lang/String;

    .line 197
    iput-object p5, p0, Lcom/inveno/transcode/view/TranscodeObject;->mTime:Ljava/lang/String;

    .line 198
    iput-object p6, p0, Lcom/inveno/transcode/view/TranscodeObject;->mUrl:Ljava/lang/String;

    .line 199
    iput-object p7, p0, Lcom/inveno/transcode/view/TranscodeObject;->mOriginal:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v0, v1}, Lcom/inveno/transcode/view/TranscodeObject$a;->removeMessages(I)V

    .line 201
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject;->mHandler:Lcom/inveno/transcode/view/TranscodeObject$a;

    invoke-virtual {v0, v1}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendEmptyMessage(I)Z

    .line 202
    invoke-direct {p0}, Lcom/inveno/transcode/view/TranscodeObject;->checkTranscodeLocalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
