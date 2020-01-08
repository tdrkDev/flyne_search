.class public Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

.field private final mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private response:Lcom/meizu/cloud/pushsdk/networking/http/Response;


# direct methods
.method public constructor <init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->mResult:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->mResult:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .line 47
    return-void
.end method

.method public static failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/meizu/cloud/pushsdk/networking/error/ANError;",
            ")",
            "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    return-object v0
.end method

.method public getOkHttpResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->response:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOkHttpResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->response:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    .line 68
    return-void
.end method
