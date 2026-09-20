.class public Lcom/openmediation/sdk/utils/request/network/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;,
        Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;,
        Lcom/openmediation/sdk/utils/request/network/Request$Method;
    }
.end annotation


# instance fields
.field private final isCheckChain:Z

.field private final isInstanceFollowRedirects:Z

.field private final mCallback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

.field private final mConnectTimeout:I

.field private mContext:Landroid/content/Context;

.field private final mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

.field private final mMethod:Lcom/openmediation/sdk/utils/request/network/Request$Method;

.field private final mReadTimeout:I

.field private final mRequestBody:Lcom/openmediation/sdk/utils/request/network/RequestBody;

.field private mShouldCallbackResponse:Z

.field private final mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$000(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Lcom/openmediation/sdk/utils/request/network/Request$Method;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mMethod:Lcom/openmediation/sdk/utils/request/network/Request$Method;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$100(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$200(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mConnectTimeout:I

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$300(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mReadTimeout:I

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$400(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$500(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Lcom/openmediation/sdk/utils/request/network/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mRequestBody:Lcom/openmediation/sdk/utils/request/network/RequestBody;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$600(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->isInstanceFollowRedirects:Z

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$700(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->isCheckChain:Z

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$800(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mCallback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->access$900(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mTag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;Lcom/openmediation/sdk/utils/request/network/Request$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request;-><init>(Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mCallback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Response;
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/request/network/Request;->syncRequest()Lcom/openmediation/sdk/utils/request/network/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/openmediation/sdk/utils/request/network/Request;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request;->performRequest(Landroid/content/Context;)V

    return-void
.end method

.method private callbackError(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;->onRequestFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static newBuilder()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;-><init>()V

    return-object v0
.end method

.method private performRequest(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mCallback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    const-string v0, "Context error"

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/utils/request/network/Request;->callbackError(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mCallback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    const-string v0, "request need a valid url, current is empty"

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/utils/request/network/Request;->callbackError(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/openmediation/sdk/utils/request/network/AsyncReq;

    invoke-direct {p1, p0}, Lcom/openmediation/sdk/utils/request/network/AsyncReq;-><init>(Lcom/openmediation/sdk/utils/request/network/Request;)V

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/Request$1;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/utils/request/network/Request$1;-><init>(Lcom/openmediation/sdk/utils/request/network/Request;)V

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/request/network/AsyncReq;->setCallback(Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;)V

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/ReqExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private syncRequest()Lcom/openmediation/sdk/utils/request/network/Response;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mShouldCallbackResponse:Z

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/SyncReq;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/utils/request/network/SyncReq;-><init>(Lcom/openmediation/sdk/utils/request/network/Request;)V

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/network/SyncReq;->start()Lcom/openmediation/sdk/utils/request/network/Response;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mConnectTimeout:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mReadTimeout:I

    return v0
.end method

.method public getRequestBody()Lcom/openmediation/sdk/utils/request/network/RequestBody;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mRequestBody:Lcom/openmediation/sdk/utils/request/network/RequestBody;

    return-object v0
.end method

.method public getRequestMethod()Lcom/openmediation/sdk/utils/request/network/Request$Method;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mMethod:Lcom/openmediation/sdk/utils/request/network/Request$Method;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckChain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->isCheckChain:Z

    return v0
.end method

.method public isInstanceFollowRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->isInstanceFollowRedirects:Z

    return v0
.end method

.method public shouldCallbackResponse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mShouldCallbackResponse:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request;->mCallback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
