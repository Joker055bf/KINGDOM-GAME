.class public Lcom/unity/udp/extension/sdk/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field public static final CODE_FAILURE:I = -0x1

.field public static final CODE_SUCCESS:I


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/unity/udp/extension/sdk/Result;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/unity/udp/extension/sdk/Result;->code:I

    .line 15
    iput-object p2, p0, Lcom/unity/udp/extension/sdk/Result;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/unity/udp/extension/sdk/Result;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/Result;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/unity/udp/extension/sdk/Result;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/Result;->message:Ljava/lang/String;

    return-void
.end method
