.class Lcom/inveno/se/http/VolleyHttp$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/RequestQueue$RequestFilter;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/http/VolleyHttp;


# direct methods
.method constructor <init>(Lcom/inveno/se/http/VolleyHttp;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/http/VolleyHttp$1;->this$0:Lcom/inveno/se/http/VolleyHttp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/inveno/se/volley/Request;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
