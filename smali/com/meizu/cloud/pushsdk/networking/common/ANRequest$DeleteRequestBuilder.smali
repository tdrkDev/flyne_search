.class public Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DeleteRequestBuilder;
.super Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteRequestBuilder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;-><init>(Ljava/lang/String;I)V

    .line 986
    return-void
.end method
