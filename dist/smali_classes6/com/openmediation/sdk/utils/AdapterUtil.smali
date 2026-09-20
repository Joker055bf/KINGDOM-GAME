.class public Lcom/openmediation/sdk/utils/AdapterUtil;
.super Ljava/lang/Object;


# static fields
.field private static final ADAPTER:Ljava/lang/String; = "Adapter"

.field protected static final MEDIATION_ADAPTER_BASE_PATH:Ljava/lang/String; = "com.openmediation.sdk.mobileads."

.field private static final mAdapterPaths:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/mediation/CustomAdsAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapters:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapterPaths:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x17

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterPath(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createAdapter(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getAdNetWork(Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)Lcom/openmediation/sdk/utils/model/AdNetwork;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/utils/model/AdNetwork;

    invoke-virtual {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getAdNetworkId()I

    move-result v1

    invoke-virtual {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getMediationVersion()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/openmediation/sdk/utils/model/AdNetwork;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAdapterMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/mediation/CustomAdsAdapter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapters:Landroid/util/SparseArray;

    return-object v0
.end method

.method protected static getAdapterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static getAdapterPath(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/openmediation/sdk/utils/AdapterUtil;->getMediationPath(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Adapter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adapter path is : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getAdns()Lorg/json/JSONArray;
    .locals 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sget-object v1, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapters:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    :try_start_0
    sget-object v3, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    sget-object v4, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getAdNetworkId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v3}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdNetWork(Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)Lcom/openmediation/sdk/utils/model/AdNetwork;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/model/AdNetwork;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/openmediation/sdk/core/AdapterRepository;->setCustomParams(Lcom/openmediation/sdk/mediation/CustomAdParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    const-string v4, "AdapterUtil getAdns : "

    invoke-static {v4, v3}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static getCustomAdsAdapter(I)Lcom/openmediation/sdk/mediation/CustomAdsAdapter;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapters:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMediationPath(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    goto/16 :goto_1

    :pswitch_1
    const-string p0, "R0FNUmVrbGFtVXA="

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "RnliZXI="

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "SHdBZHM="

    goto :goto_0

    :pswitch_4
    const-string p0, "U2FuQWRz"

    goto :goto_0

    :pswitch_5
    const-string p0, "SW5Nb2Jp"

    goto :goto_0

    :pswitch_6
    const-string p0, "RmxhdEFkcw=="

    goto :goto_0

    :pswitch_7
    const-string p0, "QWRtb3N0"

    goto :goto_0

    :pswitch_8
    const-string p0, "UHViTmF0aXZl"

    goto :goto_0

    :pswitch_9
    const-string p0, "T2d1cnk="

    goto :goto_0

    :pswitch_a
    const-string p0, "S3NBZA=="

    goto :goto_0

    :pswitch_b
    const-string p0, "U2lnbW9i"

    goto :goto_0

    :pswitch_c
    const-string p0, "Q3Jvc3NQcm9tb3Rpb24="

    goto :goto_0

    :pswitch_d
    const-string p0, "SGVsaXVt"

    goto :goto_0

    :pswitch_e
    const-string p0, "SXJvblNvdXJjZQ=="

    goto :goto_0

    :pswitch_f
    const-string p0, "TWludGVncmFs"

    goto :goto_0

    :pswitch_10
    const-string p0, "VGlrVG9r"

    goto :goto_0

    :pswitch_11
    const-string p0, "Q2hhcnRib29zdA=="

    goto :goto_0

    :pswitch_12
    const-string p0, "VGFwam95"

    goto :goto_0

    :pswitch_13
    const-string p0, "R29vZ2xlQWQ="

    goto :goto_0

    :pswitch_14
    const-string p0, "TW9QdWI="

    goto :goto_0

    :pswitch_15
    const-string p0, "QXBwTG92aW4="

    goto :goto_0

    :pswitch_16
    const-string p0, "QWRDb2xvbnk="

    goto :goto_0

    :pswitch_17
    const-string p0, "VGVuY2VudEFk"

    goto :goto_0

    :pswitch_18
    const-string p0, "VnVuZ2xl"

    goto :goto_0

    :pswitch_19
    const-string p0, "VW5pdHk="

    goto :goto_0

    :pswitch_1a
    const-string p0, "RmFjZWJvb2s="

    goto :goto_0

    :pswitch_1b
    const-string p0, "QWRNb2I="

    goto :goto_0

    :pswitch_1c
    const-string p0, "QWRUaW1pbmc="

    :goto_0
    invoke-static {p0}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.openmediation.sdk.mobileads."

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static initAdapter()V
    .locals 4

    sget-object v0, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapterPaths:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    :try_start_0
    const-class v2, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/openmediation/sdk/utils/AdapterUtil;->createAdapter(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    sget-object v2, Lcom/openmediation/sdk/utils/AdapterUtil;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getAdNetworkId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    const-string v2, "AdapterUtil getAdns : "

    invoke-static {v2, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
