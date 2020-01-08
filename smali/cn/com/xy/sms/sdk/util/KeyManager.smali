.class public Lcn/com/xy/sms/sdk/util/KeyManager;
.super Ljava/lang/Object;


# static fields
.field public static channel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static initAppKey()V
    .locals 2

    sget-object v0, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CHANNEL"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PKWBZlRIbwLENOVO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LENOVO"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SECRETKEY"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->a:Ljava/lang/String;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "RSAPRVKEY"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u65e0\u6548\u7684\u6e20\u9053"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "hdtKldgsdkgo"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "GOSMS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "J8KeTyOROASamsungReminder"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SReminder"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "TGsTZewAYUN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "OSYUN"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "KQIDAQABLEV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "LENOVO2"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, "BwIDAQABFROG"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "LEFROG"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v0, "XwIDAQABYUN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "BJYUNOS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v0, "NQIDAQABCOOL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "COOLPAD"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "SAMOPERATORYQIDAQAB"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "SAMOPERATOR"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v0, "SAMBANKVwIDAQAB"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "SAMBANK"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v0, "SAMCLASSFIYVwIDAQAB"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "SAMCLASSFIY"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "6QIDAQABSTARRYSKY"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "STARRYSKY"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v0, "vwIDAQABLIANLUOOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "LIANLUOOS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v0, "5xKI47wSAMALL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "SAMALL"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    const-string v0, "FEhNrwHTXL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "HTXL"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    const-string v0, "SAMALLxKI47w"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "SAMALL"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    const-string v0, "VMhlWdEwVNEW_LENOVO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "VNEW_LENOVO"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    const-string v0, "jE5vSv5QPIAO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "XYPIAO"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    const-string v0, "GwIDAQABZTE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "ZTE"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string v0, "1i1BDH2wONE+"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ONE+"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_16
    const-string v0, "1w36SBLwVNEW_ZTE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "VNEW_ZTE"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    const-string v0, "Oq3iD6UlMAGIC"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "MAGIC"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_18
    const-string v0, "7kRgxjdwVNEW_STARRYSKY"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "VNEW_STARRYSKY"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_19
    const-string v0, "D6mKXM8MEIZU"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "MEIZU"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1a
    const-string v0, "rq7Fyxl5DUOQU"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "DUOQU"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1b
    const-string v0, "3GdfMSKwHUAWEI"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "HUAWEI"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1c
    const-string v0, "j3FIT5mwLETV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "LETV"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1d
    const-string v0, "1i1BDH2wONE+CARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "ONE+CARD"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1e
    const-string v0, "0GCSqGSITOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "TOS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1f
    const-string v0, "UM0srSjQ365"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "365"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_20
    const-string v0, "YHMesqOQCOOL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "COOL"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_21
    const-string v0, "5Mj22a4wHUAWEICARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "HUAWEICARD"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_22
    const-string v0, "wupzCqnwGUAIWU"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "GUAIWU"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_23
    const-string v0, "XRyvMvZwSMARTISAN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "SMARTISAN"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_24
    const-string v0, "MEIZUPAYGJw"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "MEIZUPAY"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_25
    const-string v0, "dToXA5JQDAKELE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "DAKELE"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_26
    const-string v0, "p5O4wKmwGIONEE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "GIONEE"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_27
    const-string v0, "z5N7W51wKINGSUN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "KINGSUN"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_28
    const-string v0, "Cko59T6wSUGAR"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "SUGAR"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_29
    const-string v0, "oWIH+3ZQLEIDIANOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "LEIDIANOS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2a
    const-string v0, "XYTEST"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "XYTEST"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2b
    const-string v0, "al30zFgQTEST_T"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "TEST_T"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2c
    const-string v0, "gsjHPHwIKOOBEE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "KOOBEE"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2d
    const-string v0, "QlTNSIgQWENTAI2"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "WENTAI2"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2e
    const-string v0, "JqyMtaHQNUBIA"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "NUBIA"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2f
    const-string v0, "15Du354QGIONEECARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "GIONEECARD"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_30
    const-string v0, "rahtBH7wTCL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "TCL"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_31
    const-string v0, "xU6UT6pwTOS2"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "TOS2"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_32
    const-string v0, "5Gx84kmwYULONG_COOLPAD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "YULONG_COOLPAD"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_33
    const-string v0, "Uj2pznXQHCT"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "HCT"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_34
    const-string v0, "tnjdWFeQKTOUCH"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "KTOUCH"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_35
    const-string v0, "XkXZJmwIPPTV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "PPTV"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_36
    const-string v0, "dGxSiEbwTOSCARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "TOSCARD"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_37
    const-string v0, "PzqP0ONQTOSWATCH"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "TOSWATCH"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_38
    const-string v0, "VCTyBOSwSmartisan"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "Smartisan"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_39
    const-string v0, "5rLWVKgQMEITU_PHONE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "MEITU_PHONE"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3a
    const-string v0, "HUAWEIAND"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "HUAWEIAND"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3b
    const-string v0, "HUAWEITMW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "HUAWEITMW"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3c
    const-string v0, "zcK2P6yQINNOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "INNOS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3d
    const-string v0, "RbWRsTYQdroi"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "droi"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3e
    const-string v0, "J2kSrxdQGigaset"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "Gigaset"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3f
    const-string v0, "5zZZdrFQIUNI"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "IUNI"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_40
    const-string v0, "nZpg6u3wDOOV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "DOOV"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_41
    const-string v0, "RQIDAQABONEPLUSCARDNEW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "ONEPLUSCARDNEW"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_42
    const-string v0, "i3GPvZLwASUS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "ASUS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_43
    const-string v0, "NsJCCyFwPHILIPS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "PHILIPS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_44
    const-string v0, "cNNrw5WQEBEN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "EBEN"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_45
    const-string v0, "UdcqV6aQLANMO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "LANMO"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_46
    const-string v0, "PunKwZfwHISENSE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "HISENSE"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_47
    const-string v0, "DAS9exiQQIKUBOX"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "QIKUBOX"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_48
    const-string v0, "gO0o2CXwVIVO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "VIVO"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_49
    const-string v0, "kpGIJXywSAMSUNGFLOW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "SAMSUNGFLOW"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4a
    const-string v0, "DEaerxdwASUSCARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "ASUSCARD"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4b
    const-string v0, "d7tjnrkwCNSAMSUNG"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "CNSAMSUNG"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4c
    const-string v0, "NVbQx3QQMEIZUCENTER"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "MEIZUCENTER"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4d
    const-string v0, "K8wgPuIwFREEMEOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "FREEMEOS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4e
    const-string v0, "uDM3hYtwGIGASET"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "GIGASET"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4f
    const-string v0, "OmwdltCwONEPLUS2"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "ONEPLUS2"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_50
    const-string v0, "eOXJhLyQLINGHIT"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "LINGHIT"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_51
    const-string v0, "ZkhM4GyQ360OS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "360OS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_52
    const-string v0, "mmNPM4cQVNEW_ZTE2"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "VNEW_ZTE2"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_53
    const-string v0, "7N4EhHawHUAWEI2"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "HUAWEI2"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_54
    const-string v0, "oxvw9DvQTCLFLOW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "TCLFLOW"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_55
    const-string v0, "Hg9iPQ4wLIFENUM_A"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "LIFENUM_A"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_56
    const-string v0, "vRICR8qQYULONG_COOLPAD2"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "YULONG_COOLPAD2"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_57
    const-string v0, "v22YJ3QwKINGSOFTMAIL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "KINGSOFTMAIL"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_58
    const-string v0, "W5MmRZCwIMOO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "IMOO"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_59
    const-string v0, "XHpWJNFQTCLOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "TCLOS"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5a
    const-string v0, "R1pU1XXwUNISCOPE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "UNISCOPE"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5b
    const-string v0, "gOLrCBhQMEIZU2"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "MEIZU2"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5c
    const-string v0, "MkekV0RQRAGENTEK"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "RAGENTEK"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5d
    const-string v0, "rNllyzbwLAKALA"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "LAKALA"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5e
    const-string v0, "YVmD5UkQ360OSBOX"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "360OSBOX"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5f
    const-string v0, "MXUnXjvw360FLOW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "360FLOW"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_60
    const-string v0, "sX7t39KQMEIZUDATA"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "MEIZUDATA"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_61
    const-string v0, "2qqJKJbwZTE_TRIP"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ZTE_TRIP"

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_62
    return-void
.end method
