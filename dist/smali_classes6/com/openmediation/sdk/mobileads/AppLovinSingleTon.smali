.class public Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;
.super Ljava/lang/Object;
.source "AppLovinSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;,
        Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;,
        Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$AppLovinHolder;
    }
.end annotation


# instance fields
.field private mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInitState:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;)Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;
    .locals 1

    .line 30
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$AppLovinHolder;->access$100()Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppLovinSdk()Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;)V
    .locals 2

    if-eqz p1, :cond_7

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 44
    :cond_0
    sget-object v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_1

    .line 46
    invoke-interface {p3}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;->onSuccess()V

    :cond_1
    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 51
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_3
    sget-object p3, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    if-ne p3, v0, :cond_4

    return-void

    .line 56
    :cond_4
    sget-object p3, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    .line 58
    :try_start_0
    new-instance p3, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {p3, p1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-static {p2, p3, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 61
    new-instance p2, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$1;

    invoke-direct {p2, p0}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$1;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;)V

    invoke-virtual {p1, p2}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 75
    sget-object p2, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    .line 76
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mCallbacks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;

    if-eqz p3, :cond_5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init Failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_6
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_1
    return-void

    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    const-string p1, "Init Failed: AppKey is empty"

    .line 40
    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;->onFailed(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public isInit()Z
    .locals 2

    .line 34
    sget-object v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
