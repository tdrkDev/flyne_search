.class public Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private invenoadvertId:Ljava/lang/String;

.field private joinlist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;",
            ">;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->invenoadvertId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->joinlist:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addAdSdkModel(Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->joinlist:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->joinlist:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getInvenoadvertId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->invenoadvertId:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinlist()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->joinlist:Ljava/util/HashMap;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->state:I

    return v0
.end method

.method public setInvenoadvertId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->invenoadvertId:Ljava/lang/String;

    return-void
.end method

.method public setJoinlist(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->joinlist:Ljava/util/HashMap;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->state:I

    return-void
.end method
