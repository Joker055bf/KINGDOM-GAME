.class public final Lcom/openmediation/sdk/utils/request/network/Response$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/request/network/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBody:Lcom/openmediation/sdk/utils/request/network/ResponseBody;

.field private mCode:I

.field private mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

.field private mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)I
    .locals 0

    iget p0, p0, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->mCode:I

    return p0
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)Lcom/openmediation/sdk/utils/request/network/Headers;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    return-object p0
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)Lcom/openmediation/sdk/utils/request/network/ResponseBody;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->mBody:Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    return-object p0
.end method


# virtual methods
.method public body(Lcom/openmediation/sdk/utils/request/network/ResponseBody;)Lcom/openmediation/sdk/utils/request/network/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->mBody:Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    return-object p0
.end method

.method public build()Lcom/openmediation/sdk/utils/request/network/Response;
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openmediation/sdk/utils/request/network/Response;-><init>(Lcom/openmediation/sdk/utils/request/network/Response$Builder;Lcom/openmediation/sdk/utils/request/network/Response$1;)V

    return-object v0
.end method

.method public code(I)Lcom/openmediation/sdk/utils/request/network/Response$Builder;
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->mCode:I

    return-object p0
.end method

.method public connection(Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;)Lcom/openmediation/sdk/utils/request/network/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    return-object p0
.end method

.method public headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    return-object p0
.end method
