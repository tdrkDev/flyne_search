.class public Lcom/inveno/se/volley/Response;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/volley/Response$ErrorListener;,
        Lcom/inveno/se/volley/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cacheEntry:Lcom/inveno/se/volley/Cache$Entry;

.field public final error:Lcom/inveno/se/volley/VolleyError;

.field public intermediate:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/inveno/se/volley/VolleyError;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/se/volley/Response;->intermediate:Z

    iput-object v1, p0, Lcom/inveno/se/volley/Response;->result:Ljava/lang/Object;

    iput-object v1, p0, Lcom/inveno/se/volley/Response;->cacheEntry:Lcom/inveno/se/volley/Cache$Entry;

    iput-object p1, p0, Lcom/inveno/se/volley/Response;->error:Lcom/inveno/se/volley/VolleyError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/inveno/se/volley/Cache$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/inveno/se/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/se/volley/Response;->intermediate:Z

    iput-object p1, p0, Lcom/inveno/se/volley/Response;->result:Ljava/lang/Object;

    iput-object p2, p0, Lcom/inveno/se/volley/Response;->cacheEntry:Lcom/inveno/se/volley/Cache$Entry;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/volley/Response;->error:Lcom/inveno/se/volley/VolleyError;

    return-void
.end method

.method public static error(Lcom/inveno/se/volley/VolleyError;)Lcom/inveno/se/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/inveno/se/volley/VolleyError;",
            ")",
            "Lcom/inveno/se/volley/Response",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/inveno/se/volley/Response;

    invoke-direct {v0, p0}, Lcom/inveno/se/volley/Response;-><init>(Lcom/inveno/se/volley/VolleyError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lcom/inveno/se/volley/Cache$Entry;)Lcom/inveno/se/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/inveno/se/volley/Cache$Entry;",
            ")",
            "Lcom/inveno/se/volley/Response",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/inveno/se/volley/Response;

    invoke-direct {v0, p0, p1}, Lcom/inveno/se/volley/Response;-><init>(Ljava/lang/Object;Lcom/inveno/se/volley/Cache$Entry;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/Response;->error:Lcom/inveno/se/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
