.class public Lcom/discord/org/webrtc/RtcError;
.super Ljava/lang/Object;
.source "RtcError.java"


# instance fields
.field private final error:Lcom/discord/org/webrtc/RtcException;


# direct methods
.method private constructor <init>(Lcom/discord/org/webrtc/RtcException;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/discord/org/webrtc/RtcError;->error:Lcom/discord/org/webrtc/RtcException;

    return-void
.end method

.method public static error(Ljava/lang/String;)Lcom/discord/org/webrtc/RtcError;
    .locals 2

    .line 35
    new-instance v0, Lcom/discord/org/webrtc/RtcError;

    new-instance v1, Lcom/discord/org/webrtc/RtcException;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/RtcException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/RtcError;-><init>(Lcom/discord/org/webrtc/RtcException;)V

    return-object v0
.end method

.method public static success()Lcom/discord/org/webrtc/RtcError;
    .locals 2

    .line 29
    new-instance v0, Lcom/discord/org/webrtc/RtcError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/RtcError;-><init>(Lcom/discord/org/webrtc/RtcException;)V

    return-object v0
.end method


# virtual methods
.method public error()Lcom/discord/org/webrtc/RtcException;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/discord/org/webrtc/RtcError;->error:Lcom/discord/org/webrtc/RtcException;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/discord/org/webrtc/RtcError;->error:Lcom/discord/org/webrtc/RtcException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/discord/org/webrtc/RtcError;->error:Lcom/discord/org/webrtc/RtcException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public throwError()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/discord/org/webrtc/RtcError;->error:Lcom/discord/org/webrtc/RtcException;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    throw v0
.end method
