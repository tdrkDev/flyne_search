.class public Lcom/alibaba/fastjson/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static final a:Lcom/alibaba/fastjson/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alibaba/fastjson/b/g;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/g;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/g;->a:Lcom/alibaba/fastjson/b/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    check-cast p2, Ljava/util/Calendar;

    .line 14
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 16
    return-void
.end method
