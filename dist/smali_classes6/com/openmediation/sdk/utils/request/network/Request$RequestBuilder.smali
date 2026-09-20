.class public Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/request/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestBuilder"
.end annotation


# instance fields
.field private isCheckChain:Z

.field private isInstanceFollowRedirects:Z

.field private mCallback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

.field private mConnectTimeout:I

.field private mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

.field private mMethod:Lcom/openmediation/sdk/utils/request/network/Request$Method;

.field private mReadTimeout:I

.field private mRequestBody:Lcom/openmediation/sdk/utils/request/network/RequestBody;

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Lcom/openmediation/sdk/utils/request/network/Request$Method;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mMethod:Lcom/openmediation/sdk/utils/request/network/Request$Method;

    return-object p0
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Lcom/openmediation/sdk/utils/request/network/Headers;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    return-object p0
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)I
    .locals 0

    iget p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mConnectTimeout:I

    return p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)I
    .locals 0

    iget p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mReadTimeout:I

    return p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Lcom/openmediation/sdk/utils/request/network/RequestBody;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mRequestBody:Lcom/openmediation/sdk/utils/request/network/RequestBody;

    return-object p0
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->isInstanceFollowRedirects:Z

    return p0
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->isCheckChain:Z

    return p0
.end method

.method static synthetic access$800(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mCallback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public body(Lcom/openmediation/sdk/utils/request/network/RequestBody;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mRequestBody:Lcom/openmediation/sdk/utils/request/network/RequestBody;

    return-object p0
.end method

.method public callback(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mCallback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    return-object p0
.end method

.method public connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mConnectTimeout:I

    return-object p0
.end method

.method public headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    return-object p0
.end method

.method public instanceFollowRedirects(Z)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->isInstanceFollowRedirects:Z

    return-object p0
.end method

.method public isCheckChain(Z)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->isCheckChain:Z

    return-object p0
.end method

.method public method(Lcom/openmediation/sdk/utils/request/network/Request$Method;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mMethod:Lcom/openmediation/sdk/utils/request/network/Request$Method;

    return-object p0
.end method

.method public performRequest(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openmediation/sdk/utils/request/network/Request;-><init>(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;Lcom/openmediation/sdk/utils/request/network/Request$1;)V

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/request/network/Request;->access$1300(Lcom/openmediation/sdk/utils/request/network/Request;Landroid/content/Context;)V

    return-void
.end method

.method public readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mReadTimeout:I

    return-object p0
.end method

.method public syncRequest()Lcom/openmediation/sdk/utils/request/network/Response;
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openmediation/sdk/utils/request/network/Request;-><init>(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;Lcom/openmediation/sdk/utils/request/network/Request$1;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/network/Request;->access$1200(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Response;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->mUrl:Ljava/lang/String;

    return-object p0
.end method
