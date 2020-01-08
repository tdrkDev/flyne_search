.class public final Lcom/meizu/flyme/media/news/helper/NewsException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/helper/NewsException$CodeEnum;
    }
.end annotation


# static fields
.field public static final CODE_ACCEPTED:I = 0xca

.field public static final CODE_BAD_GATEWAY:I = 0x1f6

.field public static final CODE_BAD_METHOD:I = 0x195

.field public static final CODE_BAD_REQUEST:I = 0x190

.field public static final CODE_CLIENT_TIMEOUT:I = 0x198

.field public static final CODE_CONFLICT:I = 0x199

.field public static final CODE_CREATED:I = 0xc9

.field public static final CODE_ENTITY_TOO_LARGE:I = 0x19d

.field public static final CODE_FORBIDDEN:I = 0x193

.field public static final CODE_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final CODE_GONE:I = 0x19a

.field public static final CODE_INTERNAL_ERROR:I = 0x1f4

.field public static final CODE_LENGTH_REQUIRED:I = 0x19b

.field public static final CODE_MOVED_PERM:I = 0x12d

.field public static final CODE_MOVED_TEMP:I = 0x12e

.field public static final CODE_MULT_CHOICE:I = 0x12c

.field public static final CODE_NEWS_NO_NEW_ARTICLES:I = -0x66

.field public static final CODE_NEWS_REFRESH:I = -0x65

.field public static final CODE_NEWS_UNKNOWN:I = -0x64

.field public static final CODE_NOT_ACCEPTABLE:I = 0x196

.field public static final CODE_NOT_AUTHORITATIVE:I = 0xcb

.field public static final CODE_NOT_FOUND:I = 0x194

.field public static final CODE_NOT_IMPLEMENTED:I = 0x1f5

.field public static final CODE_NOT_MODIFIED:I = 0x130

.field public static final CODE_NO_CONTENT:I = 0xcc

.field public static final CODE_OK:I = 0xc8

.field public static final CODE_PARTIAL:I = 0xce

.field public static final CODE_PAYMENT_REQUIRED:I = 0x192

.field public static final CODE_PRECON_FAILED:I = 0x19c

.field public static final CODE_PROXY_AUTH:I = 0x197

.field public static final CODE_REQ_TOO_LONG:I = 0x19e

.field public static final CODE_RESET:I = 0xcd

.field public static final CODE_SEE_OTHER:I = 0x12f

.field public static final CODE_UNAUTHORIZED:I = 0x191

.field public static final CODE_UNAVAILABLE:I = 0x1f7

.field public static final CODE_UNSUPPORTED_TYPE:I = 0x19f

.field public static final CODE_USE_PROXY:I = 0x131

.field public static final CODE_VERSION:I = 0x1f9


# instance fields
.field public final code:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 254
    invoke-static {p1, p2, p3}, Lcom/meizu/flyme/media/news/helper/NewsException;->b(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    iput p1, p0, Lcom/meizu/flyme/media/news/helper/NewsException;->code:I

    .line 256
    return-void
.end method

.method public static a(I)Lcom/meizu/flyme/media/news/helper/NewsException;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    new-instance v0, Lcom/meizu/flyme/media/news/helper/NewsException;

    invoke-direct {v0, p0, v1, v1}, Lcom/meizu/flyme/media/news/helper/NewsException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Lcom/meizu/flyme/media/news/helper/NewsException;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Lcom/meizu/flyme/media/news/helper/NewsException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/meizu/flyme/media/news/helper/NewsException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Throwable;)Lcom/meizu/flyme/media/news/helper/NewsException;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/meizu/flyme/media/news/helper/NewsException;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/flyme/media/news/helper/NewsException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-object p1

    .line 279
    :cond_0
    if-eqz p2, :cond_1

    .line 280
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 283
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 294
    const-string p1, "Unknown"

    goto :goto_0

    .line 285
    :sswitch_0
    const-string p1, "Refreshing"

    goto :goto_0

    .line 288
    :sswitch_1
    const-string p1, "Not Found"

    goto :goto_0

    .line 291
    :sswitch_2
    const-string p1, "Request Entity Too Large"

    goto :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        -0x65 -> :sswitch_0
        0x194 -> :sswitch_1
        0x19d -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewsException{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/flyme/media/news/helper/NewsException;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/helper/NewsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/helper/NewsException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    return-object v0
.end method
