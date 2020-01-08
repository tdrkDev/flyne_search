.class public Lcn/com/xy/sms/sdk/Iservice/ResolveData;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/Iservice/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/Iservice/ResolveData;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    iget v0, p0, Lcn/com/xy/sms/sdk/Iservice/ResolveData;->a:I

    return v0
.end method

.method public getAttachItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/Iservice/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/xy/sms/sdk/Iservice/ResolveData;->d:Ljava/util/List;

    return-object v0
.end method

.method public getDirective()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/Iservice/ResolveData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/Iservice/ResolveData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setActionType(I)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/sdk/Iservice/ResolveData;->a:I

    return-void
.end method

.method public setAttachItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/Iservice/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/com/xy/sms/sdk/Iservice/ResolveData;->d:Ljava/util/List;

    return-void
.end method

.method public setDirective(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/Iservice/ResolveData;->c:Ljava/lang/String;

    return-void
.end method

.method public setTargetChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/Iservice/ResolveData;->b:Ljava/lang/String;

    return-void
.end method
