.class public Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private pushTimesTamp:Ljava/lang/String;

.field private seqId:Ljava/lang/String;

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->seqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->pushTimesTamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->deviceId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;-><init>(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)V

    return-object v0
.end method

.method public deviceId(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->deviceId:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public pushTimesTamp(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->pushTimesTamp:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public seqId(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->seqId:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public taskId(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->taskId:Ljava/lang/String;

    .line 33
    return-object p0
.end method
