.class public Lcom/alibaba/fastjson/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/alibaba/fastjson/a/h;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alibaba/fastjson/a/a/u;

.field private d:Lcom/alibaba/fastjson/a/h;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    iput-object p1, p0, Lcom/alibaba/fastjson/a/c$a;->a:Lcom/alibaba/fastjson/a/h;

    .line 1142
    iput-object p2, p0, Lcom/alibaba/fastjson/a/c$a;->b:Ljava/lang/String;

    .line 1143
    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/fastjson/a/h;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c$a;->a:Lcom/alibaba/fastjson/a/h;

    return-object v0
.end method

.method public a(Lcom/alibaba/fastjson/a/a/u;)V
    .locals 0

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/alibaba/fastjson/a/c$a;->c:Lcom/alibaba/fastjson/a/a/u;

    .line 1159
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/a/h;)V
    .locals 0

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/alibaba/fastjson/a/c$a;->d:Lcom/alibaba/fastjson/a/h;

    .line 1167
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/alibaba/fastjson/a/a/u;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c$a;->c:Lcom/alibaba/fastjson/a/a/u;

    return-object v0
.end method

.method public d()Lcom/alibaba/fastjson/a/h;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c$a;->d:Lcom/alibaba/fastjson/a/h;

    return-object v0
.end method
