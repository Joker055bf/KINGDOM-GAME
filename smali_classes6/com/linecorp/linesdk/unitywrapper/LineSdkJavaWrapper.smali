.class public final Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;
.super Ljava/lang/Object;
.source "LineSdkJavaWrapper.java"


# static fields
.field public static listener:Lcom/linecorp/linesdk/unitywrapper/LineCallbackListener;


# instance fields
.field sdkWrapper:Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentAccessToken()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;->sdkWrapper:Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->getCurrentAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProfile(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;->sdkWrapper:Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->getProfile(Ljava/lang/String;)V

    return-void
.end method

.method public final login(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;->sdkWrapper:Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->login(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public final logout(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;->sdkWrapper:Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->logout(Ljava/lang/String;)V

    return-void
.end method

.method public final refreshAccessToken(Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;->sdkWrapper:Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->refreshAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method public final setupSdk(Ljava/lang/String;Lcom/linecorp/linesdk/unitywrapper/LineCallbackListener;)V
    .locals 0

    .line 11
    sput-object p2, Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;->listener:Lcom/linecorp/linesdk/unitywrapper/LineCallbackListener;

    .line 12
    new-instance p2, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;

    invoke-direct {p2}, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;-><init>()V

    iput-object p2, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;->sdkWrapper:Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;

    .line 14
    invoke-virtual {p2, p1}, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->setupSdk(Ljava/lang/String;)V

    return-void
.end method
