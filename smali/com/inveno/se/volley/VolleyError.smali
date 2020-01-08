.class public Lcom/inveno/se/volley/VolleyError;
.super Ljava/lang/Exception;


# instance fields
.field public final networkResponse:Lcom/inveno/se/volley/NetworkResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/volley/VolleyError;->networkResponse:Lcom/inveno/se/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Lcom/inveno/se/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/inveno/se/volley/VolleyError;->networkResponse:Lcom/inveno/se/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/volley/VolleyError;->networkResponse:Lcom/inveno/se/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/volley/VolleyError;->networkResponse:Lcom/inveno/se/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/volley/VolleyError;->networkResponse:Lcom/inveno/se/volley/NetworkResponse;

    return-void
.end method
