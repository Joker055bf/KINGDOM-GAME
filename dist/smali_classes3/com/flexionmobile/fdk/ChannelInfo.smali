.class public final Lcom/flexionmobile/fdk/ChannelInfo;
.super Ljava/lang/Object;


# instance fields
.field private final channelName:Ljava/lang/String;

.field private final isTestMode:Z

.field private final storePageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/ChannelInfo;->channelName:Ljava/lang/String;

    iput-object p2, p0, Lcom/flexionmobile/fdk/ChannelInfo;->storePageUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/flexionmobile/fdk/ChannelInfo;->isTestMode:Z

    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/ChannelInfo;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getStorePageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/ChannelInfo;->storePageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/flexionmobile/fdk/slho;

    invoke-direct {v0}, Lcom/flexionmobile/fdk/slho;-><init>()V

    throw v0
.end method

.method public isTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flexionmobile/fdk/ChannelInfo;->isTestMode:Z

    return v0
.end method
