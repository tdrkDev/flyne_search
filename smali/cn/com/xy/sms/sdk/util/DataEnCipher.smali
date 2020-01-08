.class public Lcn/com/xy/sms/sdk/util/DataEnCipher;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getChannelData(I)Z
.end method

.method public native getKeyData(I)Z
.end method

.method public native xyBase64Decode2(Ljava/lang/String;)[B
.end method

.method public native xyBase64Encode2([BI)Ljava/lang/String;
.end method

.method public native xyDecrypt([BI[BI)[B
.end method

.method public native xyEncrypt([BI[BI)[B
.end method
